import {combineReducers} from "redux";  
import handleUsers from "./userReducer";
import handleCharacters from "./demoReducer";
import handlePerks from "./craftReducer";

const rootReducer = combineReducers({
	users: handleUsers,
	characters: handleCharacters,
	perks: handlePerks,
});

export default rootReducer