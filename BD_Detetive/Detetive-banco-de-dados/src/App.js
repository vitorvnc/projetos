import { Client } from 'boardgame.io/client';
import { DetetiveGame } from './Game';

class DetetiveClient {
  constructor() {
    this.client = Client({ game: DetetiveGame });
    this.client.start();
  }
}
const app = new DetetiveClient();