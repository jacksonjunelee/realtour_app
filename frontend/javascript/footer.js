( function () {
	var footerData = {
		options: [
			{
				id: 1,
				content: "About Us",
				link: "#"
			},
			{
				id: 2,
				content: "Contact Us",
				link: "#"
			},
			{
				id: 3,
				content: "Blog",
				link: "#"
			},
			{
				id: 4,
				content: "Help",
				link: "#"
			},
			{
				id: 5,
				content: "Privacy",
				link: "#"
			},
			{
				id: 6,
				content: "Terms and Conditions",
				link: "#"
			},
			{
				id: 7,
				content: "facebook",
				link: "#"
			},
			{
				id: 8,
				content: "twitter",
				link: "#"
			},
			{
				id: 9,
				content: "instagram",
				link: "#"
			},
			{
				id: 10,
				content: "pinterest",
				link: "#"
			}
		]
	};

	var ListCmpt = React.createClass({
		render: function () {
		}
	})

	var FooterSection = React.createClass({
		render: function () {
			//var options = this.props.footerData.options;
			var options = this.props.data.options;
			console.log('this is it:', this)
			return (
				<div className="global-footer-section clearfix">
					<ul>
						{
							options.map( function ( option ) {
								var optName = option.content;

								return (
									<li key={ option.id } className="global-footer-section--option-list">
										<a href={ option.link }>
											{ optName }
										</a>
									</li>
								);
							})
						}
					</ul>
				</div>
			);
		}
	});

	ReactDOM.render(
		<FooterSection data={footerData} />,
		document.getElementById( 'react-footer')
	);


})();