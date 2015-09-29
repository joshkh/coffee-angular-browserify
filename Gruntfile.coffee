module.exports = ->

  @initConfig

    clean:
      all: ["tmp", 'public/css/style.css']

    connect:
      all:
        options:
          port: 9000
          base: 'public'

    browserify:
      dist:
        files:
          'public/js/controllers.js': ['tmp/js/**/*.js']
        options:
          standalone: 'app'

    watch:
      css:
        files: 'src/less/**'
        tasks: ['clean', 'less']
      src:
        files: 'src/coffee/**'
        tasks: ['clean', 'coffee:all', 'browserify:dist']

    mochaTest:
      test:
        src: ['test/**/*.coffee']

    coffee:
      all:
        expand: true,
        cwd: 'src/coffee'
        src: ['**/*.coffee']
        dest: 'tmp/js/'
        ext: '.js'

    less:
      dev:
        files:
          'public/css/app.css': 'src/less/style.less'

  @loadNpmTasks "grunt-contrib-connect"
  @loadNpmTasks "grunt-contrib-clean"
  @loadNpmTasks "grunt-contrib-watch"
  @loadNpmTasks "grunt-contrib-less"
  @loadNpmTasks "grunt-contrib-coffee"
  @loadNpmTasks "grunt-browserify"



  @registerTask "build", [
    "coffee"
  ]

  @registerTask "dev", [
  	"build",
  	"connect",
  	"watch"
  ]
