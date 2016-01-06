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
			<ul class="global-footer">
				<li>Some option1</li>
				<li>Some option2</li>
				<li>Some option3</li>
				<li>Some option4</li>
			</ul>
		);
	}
});

ReactDOM.render(
	<FooterSection />,
	document.getElementById( 'react-footer')
);

