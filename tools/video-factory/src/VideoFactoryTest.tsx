import {AbsoluteFill, interpolate, useCurrentFrame} from 'remotion';

export const VideoFactoryTest = () => {
  const frame = useCurrentFrame();
  const opacity = interpolate(frame, [0, 15, 75, 90], [0, 1, 1, 0], {
    extrapolateLeft: 'clamp',
    extrapolateRight: 'clamp',
  });

  return (
    <AbsoluteFill
      style={{
        alignItems: 'center',
        background: 'linear-gradient(160deg, #17122c 0%, #2a2365 55%, #5b31a3 100%)',
        color: 'white',
        fontFamily: 'Arial, sans-serif',
        justifyContent: 'center',
        padding: 120,
        textAlign: 'center',
      }}
    >
      <div style={{fontSize: 88, fontWeight: 700, lineHeight: 1.1, opacity}}>
        Video Factory
      </div>
      <div style={{fontSize: 38, marginTop: 28, opacity}}>
        Remotion · 1080 × 1920
      </div>
    </AbsoluteFill>
  );
};

