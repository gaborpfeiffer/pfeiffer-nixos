
import { useState } from 'react';

export const Component = () => {

  const [state, setState] = useState();

  useEffect(() => {
    setState('John');
  });

  return (
    <div>{state}</div>
  );
}

