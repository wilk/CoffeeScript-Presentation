module.exports = function (grunt) {
	grunt.initConfig ({
		watch: {
			main: {
				files: ['**/*.jade', '**/*.scss', '**/*.coffee'] ,
				tasks: 'compile'
			}
		} ,
		
		connect: {
			server: {
				options: {
					port: 8888 ,
					base: '.'
				}
			}
		} ,
		
		jade: {
			compile: {
				options: {
					data: {
						debug: false
					}
				} ,
				files: {
					'index.html': ['jade/*.jade']
				}
			}
		} ,
		
		sass: {
			dist: {
				files: [{
					expand: true ,
					cwd: 'sass' ,
					src: ['*.scss'] ,
					dest: '../stylesheets/' ,
					ext: '.css'
				}]
			}
		} ,
		
		coffee: {
			compile: {
				options: {
					sourceMap: true
				} ,
				glob_to_multiple: {
					expand: true ,
					flatten: true ,
					cwd: 'coffee' ,
					src: ['*.coffee'] ,
					dest: '../js/' ,
					ext: '.js'
				}
			}
		}
	});
	
	grunt.loadNpmTasks ('grunt-contrib-connect');
	grunt.loadNpmTasks ('grunt-contrib-watch');
	grunt.loadNpmTasks ('grunt-contrib-jade');
	grunt.loadNpmTasks ('grunt-contrib-sass');
	grunt.loadNpmTasks ('grunt-contrib-coffee');
	
	grunt.registerTask ('compile', ['jade', 'sass', 'coffee']);
	
	grunt.registerTask ('serve', ['connect', 'watch']);
};
