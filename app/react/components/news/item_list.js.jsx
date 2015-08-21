import React from 'react';
import Item from './item';

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
            <Item item={item} />
          </div>
        </div>
      );
    });
    return <div className='items'>{list}</div>;
  }
}

export default ItemList;
