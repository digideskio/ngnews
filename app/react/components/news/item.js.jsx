import React from 'react';

class Item extends React.Component {
  static get propTypes() {
    return {
      item: React.PropTypes.object.isRequired, 
    };
  }

  render() {
    const item = this.props.item;
    return (
      <div className="card-content">
        <div className="col s2 center-align">
          <span className="item__icon">
            <i className={this.props.item.icon_name}></i>
          </span>
        </div>
        <div className="col s10 item__body">
          <span className="grey-text text-lighten-2">
            {this.props.item.display_date}
          </span>
          <p>{item.body}</p>
        </div>
      </div>
    );
  }
}

export default Item;
