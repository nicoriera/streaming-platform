// Frontend entry point - SolidJS application
import { render } from 'solid-js/web';
import App from './App';

const root = document.getElementById('root');

if (root) {
  render(() => <App />, root);
}
