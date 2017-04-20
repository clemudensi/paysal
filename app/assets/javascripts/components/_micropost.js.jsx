var Micropost = React.createClass({

    displayName: 'Micropost',

    propTypes: {
        title: React.PropTypes.string,
        description: React.PropTypes.node
    },


    render: function() {
        return (
            <div>
                <div>title: {this.props.title}</div>
                <div>description: {this.props.description}</div>
            </div>
        );
    }
});
