function [firstPress]= KbQueueDemoPart1(deviceIndex)
% Displays the key number when the user presses a key.
if nargin < 1
  deviceIndex = [];
end

% fprintf('1 of 6.  Testing KbQueueCheck and KbName: press a key to see its number.\n');
% fprintf('Press the escape key to proceed to the next demo.\n');
% escapeKey = KbName('ESCAPE');
KbQueueCreate(deviceIndex);
while KbCheck; end % Wait until all keys are released.

KbQueueStart(deviceIndex);

while 1
    % Check the queue for key presses.
    [ pressed, firstPress]=KbQueueCheck(deviceIndex);

    % If the user has pressed a key, then display its code number and name.
    if pressed

        % Note that we use find(firstPress) because firstPress is an array with
        % zero values for unpressed keys and non-zero values for pressed keys
        %
        % The fprintf statement implicitly assumes that only one key will have
        % been pressed. If this assumption is not correct, an error will result

%          fprintf('You pressed key %i which is %s\n', min(find(firstPress)), KbName(min(find(firstPress))));
        break
%         if firstPress(escapeKey)
%             break;
%         end
    end
end
KbQueueRelease(deviceIndex);
return