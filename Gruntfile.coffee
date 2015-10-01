module.exports = ->

  @initConfig

    clean:
      all: ["tmp", 'public/**/*.html', "public/js/**", "public/css/**"]

    connect:
      all:
        options:
          port: 9000
          base: 'public'

    copy:
      main:
        files: [
          {expand: true,
          cwd: 'src/html',
          src: ['**'],
          dest: 'public/'},
          {expand: true,
          cwd: 'tmp/js',
          src: ['**'],
          dest: 'public/js/'}
        ]

    browserify:
      dist:
        files:
          'public/js/bundle.js': ['tmp/js/**/*.js']
        options:
          standalone: 'app'

    watch:
      css:
        files: 'src/less/**'
        tasks: ['clean', 'less', 'copy:main', 'coffee:all', 'browserify:dist']
      src:
        files: 'src/coffee/**'
        tasks: ['clean', 'less', 'copy:main', 'coffee:all', 'browserify:dist']
      html:
        files: 'src/html/**'
        tasks: ['clean', 'less', 'copy:main', 'coffee:all', 'browserify:dist']

    mochaTest:
      test:
        src: ['test/**/*.coffee']

    bower:
      dev:
        dest: 'dest/path'

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
  @loadNpmTasks "grunt-contrib-copy"
  @loadNpmTasks "grunt-bower"



  @registerTask "build", [
    "coffee"
  ]

  @registerTask "dev", [
  	"build",
  	"connect",
  	"watch"
  ]
