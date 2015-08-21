import React from 'react';

class ItemList extends React.Component {
  static get propTypes() {
    return {
      items: React.PropTypes.array.isRequired, 
    };
  }
  
  render() {
    const list = this.props.items.map((item) => {
      return ( 
        <div className="row">
          <div className="card">
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
                <p>{item.body}</p>
              </div>
            </div>
          </div>
        </div>
      );
    });
    return <div className='items'>{list}</div>;
  }
}

export default ItemList;
