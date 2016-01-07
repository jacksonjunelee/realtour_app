var footerData = {
	options: [
		{
			id: 1,
			content: "About Us"
		},
		{
			id: 2,
			content: "Contact Us"
		},
		{
			id: 3,
			content: "Blog"
		},
		{
			id: 4,
			content: "Help"
		},
		{
			id: 5,
			content: "Privacy"
		},
		{
			id: 6,
			content: "Terms and Conditions"
		},
		{
			id: 7,
			content: "facebook"
		},
		{
			id: 8,
			content: "twitter"
		},
		{
			id: 9,
			content: "instagram"
		},
		{
			id: 10,
			content: "pinterest"
		}
	]
}

var FooterSection = React.createClass({
	render: function () {
		var options = this.props.footerData.options;

		return (
			<ul className="global-footer">
				<li className="">
				{
					options.map( function ( option ) {

					});
				}
				</li>
			</ul>
		);
	}
});

ReactDOM.render(
	<FooterSection />,
	document.getElementById( 'react-footer')
);

