function Dialogue() constructor{
	// object dialogue array
	self._dialogs = [];
	
	// add a new message to the list 
	self.add = function(_sprite, _message) {
		array_push(self._dialogs, {
			sprite: _sprite,
			message: _message
	});
	}
	// pop dialogue to the display 
	self.pop = function() {
		var _response = array_first(self._dialogs);
		array_delete(self._dialogs, 0, 1);	
		return _response;
	}
	// leep track of number of outputs 
	self.count = function() {
		return array_length(self._dialogs);
	}
	
	// get the most recent elements	
	self.last = function() {
        if (array_length(self._dialogs) > 0) {
            return array_get(self._dialogs, array_length(self._dialogs) - 1);
        }
        return undefined; // Return undefined if no messages exist
    }
}