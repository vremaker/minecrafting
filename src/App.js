import React from 'react';
import logo from './logo.svg';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link
} from "react-router-dom";
import BlocksView from './blocks'
import Recipes from './recipes'

function App() {  
  return (
    <div className="App">
       <Router>
      <Switch>
        <Route exact path="/">
          <BlocksView />
        </Route> 
        <Route exact path="/recipes">
          <Recipes />
        </Route>  
      </Switch>
      </Router>    
    </div>
  );
}

export default App;
