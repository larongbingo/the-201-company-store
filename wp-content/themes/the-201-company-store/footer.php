<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package The_201_Company_Store
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer container">
		<div class="row">
			<div class="col">
				<h5>Links</h5>
				<a href="/?page_id=9">About Us</a>
			</div>
		</div>

		<div class="site-info text-center">
			<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'the-201-company-store' ) ); ?>">
				<?php
				/* translators: %s: CMS name, i.e. WordPress. */
				printf( esc_html__( 'Proudly powered by %s', 'the-201-company-store' ), 'WordPress' );
				?>
			</a>
			<span class="sep"> | </span>
				<?php
				/* translators: 1: Theme name, 2: Theme author. */
				printf( esc_html__( 'Theme: %1$s by %2$s.', 'the-201-company-store' ), 'the-201-company-store', '<a href="http://underscores.me/">Underscores.me</a>' );
				?>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
