const gulp = require("gulp");

gulp.task('watch', function () {
    gulp.watch('dist/*.js').on('change', function (file) {
        console.log("File Changed.");
        gulp.src('dist/*.js').pipe(gulp.dest('./'));
    });
});