var FooterSection = React.createClass({
	render: function () {
		return (
			<ul>
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

