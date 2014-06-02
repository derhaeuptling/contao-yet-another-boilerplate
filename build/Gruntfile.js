module.exports = function(grunt) {

// Project configuration.

grunt.initConfig({
  pkg: grunt.file.readJSON('package.json'),


  /**
   * WATCH
   */
  watch: {
      sass: {
        files: ['sass/**/*.scss', 'js/**/*.*', 'js_dist/**/*.*', 'js/**/*.*', 'fonts/**/*.*', 'images/**/*.*'],
        tasks: ['sass:prod', 'autoprefixer:dist', 'ftpush:dev'],
        options: {
          spawn: false,
          livereload: true,
        },
      }
  },



  /**
   * SASS
   */
  sass: {

    options: {
      cacheLocation: '../build/.sass-cache',
    },

    dev: {
      options: {
        style: 'expanded',
        sourcemap: true,
        lineNumbers: true,
      },
      files: {
        '../files/dist/css/styles.css': 'sass/styles.scss'
      }
    },

    prod: {
      options: {
        style: 'compressed',
        sourcemap: true,
      },
      files: {
       '../files/dist/css/styles.css' : 'sass/styles.scss'
      }
    }
  },



  /**
   * AUTOPREFIXER
   */
  autoprefixer: {
    dist: {
      options: {
          browsers: ['last 3 versions', '> 1%', 'ie 9', 'ie 8'],
          map: true
      },
      src: '../files/dist/css/styles.css',
      dest:'../files/dist/css/styles.prefixed.css'
    }
  },


  /**
   * MODERNIZR
   */
  modernizr: {

      dist: {
          // [REQUIRED] Path to the build you're using for development.
          "devFile" : "../files/dist/js/",

          // [REQUIRED] Path to save out the built file.
          "outputFile" : "../files/dist/js/lib/modernizr-custom.js",

          // Based on default settings on http://modernizr.com/download/
          "extra" : {
              "shiv"      : false,
              "printshiv" : false,
              "load"      : false,
              "mq"        : false,
              "cssclasses": true
          },

          // Based on default settings on http://modernizr.com/download/
          "extensibility" : {
              "addtest"     : false,
              "prefixed"    : false,
              "teststyles"  : false,
              "testprops"   : false,
              "testallprops": false,
              "hasevents"   : false,
              "prefixes"    : false,
              "domprefixes" : false
          },

          // By default, source is uglified before saving
          "uglify" : true,

          // Define any tests you want to implicitly include.
          "tests" : [],

          // By default, this task will crawl your project for references to Modernizr tests.
          // Set to false to disable.
          "parseFiles" : true,

          // When parseFiles = true, this task will crawl all *.js, *.css, *.scss files, except files that are in node_modules/.
          // You can override this by defining a "files" array below.
          // "files" : {
              // "src": []
          // },

          // When parseFiles = true, matchCommunityTests = true will attempt to
          // match user-contributed tests.
          "matchCommunityTests" : false,

          // Have custom Modernizr tests? Add paths to their location here.
          "customTests" : []
      }

  },

  /**
   * SPRITESMITH
   */
  sprite:{
    all: {
      src: 'sprite/*.png',
      destImg: '../files/dist/images/spritesheet.png',
      destCSS: 'sass/_sprite.scss',
      // OPTIONAL: Specify engine (auto, phantomjs, canvas, gm, pngsmith)
      'engine': 'pngsmith',
      'algorithm': 'diagonal',
      'padding': 10,
      'cssFormat': 'scss_maps'
    }
  },



  /**
   * FTPUSH
   */
  ftpush: {
      dev: {
          auth: {
              host: 'hauptwolke.de',
              port: 21,
              authKey: 'host'
            },
          src: '../files/dist/',
          dest: 'files/dist',
          exclusions: ['.DS_Store', '**/Thumbs.db', 'dist/tmp', 'styles.css', 'styles.css.map'],
          keep: ['/important/images/at/server/*.jpg'],
          simple: true,
          useList: false
      },
      src_app: {
          auth: {
              host: 'hauptwolke.de',
              port: 21,
              authKey: 'host'
            },
          src: '../app',
          dest: '../app',
          exclusions: ['**/.DS_Store', '**/Thumbs.db', 'dist/tmp', 'styles.css', 'styles.css.map', '.grunt'],
          simple: true,
          useList: false
      },
      src_build: {
          auth: {
              host: 'hauptwolke.de',
              port: 21,
              authKey: 'host'
            },
          src: '../build',
          dest: '../build',
          exclusions: ['**/.DS_Store', '**/Thumbs.db', 'dist/tmp', 'styles.css', 'styles.css.map',
            '.sass-cache', 'bower_components', 'node_modules'],
          simple: true,
          useList: false
      }
  },

}); // end: init


  grunt.loadNpmTasks ('grunt-contrib-sass');
  grunt.loadNpmTasks ('grunt-autoprefixer');
  grunt.loadNpmTasks ('grunt-contrib-watch');
  grunt.loadNpmTasks ('grunt-modernizr');
  grunt.loadNpmTasks ('grunt-ftpush');
  grunt.loadNpmTasks ('grunt-spritesmith');

  // setBase
  grunt.file.setBase('../app/');

  // registerTasks
  grunt.registerTask('default', ['sass:prod', 'autoprefixer:dist', 'ftpush:dev', 'watch']);
  grunt.registerTask('prod', ['sass:prod', 'autoprefixer:dist', 'ftpush:dev', 'ftpush:src_app', 'ftpush:src_build']);


};
