import {Composition} from 'remotion';
import {VideoFactoryTest} from './VideoFactoryTest';

export const RemotionRoot = () => (
  <Composition
    id="VideoFactoryTest"
    component={VideoFactoryTest}
    durationInFrames={90}
    fps={30}
    width={1080}
    height={1920}
  />
);

