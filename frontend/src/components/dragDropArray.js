import Muuri from 'muuri';
import { useState, useEffect } from 'react';

export default function Inventory() {
    const [grid, setGrid] = useState();
  
    useEffect(() => {
      setGrid(
        new Muuri('.grid', {
          dragEnabled: true,
            // layoutDuration: 400,
            //layoutEasing: 'ease',
            fillGaps: true,
            horizontal: true,
          sortData: {
            id: function(item, element) {
              return element.children[0].id;
            }
          }
        })
      );
    }, []);
    return (
      <div>
        <div className="grid">
          <div className="item">
            <div className="item-content" id="A">
              <div
                style={{
                  width: 450,
                  height: 300,
                  backgroundColor: 'violet',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                A
              </div>
            </div>
          </div>
          <div className="item">
            <div className="item-content" id="B">
              <div
                style={{
                  width: 200,
                  height: 320,
                  backgroundColor: 'gold',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                B
              </div>
            </div>
          </div>
          <div className="item">
            <div className="item-content" id="C">
              <div
                style={{
                  width: 400,
                  height: 400,
                  backgroundColor: 'orange',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                C
              </div>
            </div>
          </div>
          <div className="item">
            <div className="item-content" id="D">
              <div
                style={{
                  width: 400,
                  height: 400,
                  backgroundColor: 'red',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                D
              </div>
            </div>
          </div>
          <div className="item">
            <div className="item-content" id="E">
              <div
                style={{
                  width: 400,
                  height: 400,
                  backgroundColor: 'brown',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                E
              </div>
            </div>
          </div>
          <div className="item">
            <div className="item-content" id="F">
              <div
                style={{
                  width: 400,
                  height: 400,
                  backgroundColor: 'pink',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                F
              </div>
            </div>
          </div>
          <div className="item">
            <div className="item-content" id="G">
              <div
                style={{
                  width: 400,
                  height: 400,
                  backgroundColor: 'blue',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                G
              </div>
            </div>
          </div>
          <div className="item">
            <div className="item-content" id="H">
              <div
                style={{
                  width: 400,
                  height: 400,
                  backgroundColor: 'green',
                  fontSize: 50,
                  color: 'white'
                }}
              >
                H
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }

