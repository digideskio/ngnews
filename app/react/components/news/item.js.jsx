import React from 'react';
import Markdown from 'react-remarkable';

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
            <i className={item.icon_name}></i>
          </span>
        </div>
        <div className="col s10 item__body">
          <span className="grey-text text-lighten-2">
            {item.display_date}
          </span>
          <Markdown source={item.body} />
        </div>
      </div>
    );
  }
}

export default Item;
