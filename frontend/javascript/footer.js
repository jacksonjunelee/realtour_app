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
				content: "Facebook",
				link: "#",
				icon: ""
			},
			{
				id: 8,
				content: "Twitter",
				link: "#",
				icon: ""
			},
			{
				id: 9,
				content: "Instagram",
				link: "#",
				icon: ""
			},
			{
				id: 10,
				content: "Pinterest",
				link: "#",
				icon: ""
			}
		]
	};

	var ListItemCmpt = React.createClass({
		render: function () {

			var optName = this.props.option.content;
			var optLink = this.props.option.link;

			return (
				<li className="global-footer-section--option-list">
					<a href={ optLink }>
						{ optName }
					</a>
				</li>
			);

		}
	});

	var FooterSection = React.createClass({
		render: function () {
			//var options = this.props.footerData.options;
			var options = this.props.data.options;

			return (
				<div className="global-footer-section clearfix">
					<ul className="global-footer-section--ul global-footer-left-sec">
						{
							options.map( function ( option ) {
								if ( option.id <= 4 ) {
									return (
										<ListItemCmpt key={ option.id } option={ option } />
									);
								}
							})
						}
					</ul>
					<ul className="global-footer-section--ul global-footer-mid-sec">
						{
							options.map( function ( option ) {
								if ( option.id > 4 && option.id <= 6) {
									return (
										<ListItemCmpt key={ option.id } option={ option } />
									);
								}
							})
						}
					</ul>
					<ul className="global-footer-section--ul global-footer-right-sec">
						{
							options.map( function ( option ) {
								if ( option.id > 6 ) {
									return (
										<ListItemCmpt key={ option.id } option={ option } />
									);
								}
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

















