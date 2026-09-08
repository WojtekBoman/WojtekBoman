```aura width=860 height=300
(function() {
 var categories = [
   { title: 'Languages', color: '#fb7185', items: ['TypeScript', 'JavaScript'] },
   { title: 'Frameworks', color: '#60a5fa', items: ['React Native', 'React', 'Redux', 'Node.js'] },
 ];
 var avatar = (github && github.user && github.user.avatarUrl) || 'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png';

 return (
   <div style={{
     width: '100%', height: '100%', background: '#080910',
     display: 'flex', flexDirection: 'column', fontFamily: 'Inter',
     position: 'relative', overflow: 'hidden', borderRadius: 16,
     border: '1px solid rgba(96,165,250,0.22)',
     padding: '22px 40px 20px',
   }}>

     <style>
       {`
         @keyframes float-slow {
           0%, 100% { transform: translateX(0px); opacity: 0.8; }
           50% { transform: translateX(350px); opacity: 1.2; }
         }
         @keyframes float-medium {
           0%, 100% { transform: translateX(0px); opacity: 0.7; }
           50% { transform: translateX(-250px); opacity: 1.1; }
         }
         @keyframes float-fast {
           0%, 100% { transform: translateX(0px); opacity: 0.9; }
           50% { transform: translateX(200px); opacity: 0.6; }
         }
         @keyframes float-diagonal {
           0%, 100% { transform: translateX(0px); opacity: 0.75; }
           50% { transform: translateX(300px); opacity: 1.0; }
         }
         @keyframes float-wave {
           0%, 100% { transform: translateX(0px); opacity: 0.65; }
           33% { transform: translateX(-160px); opacity: 0.9; }
           66% { transform: translateX(80px); opacity: 1.0; }
         }
         @keyframes float-pulse {
           0%, 100% { transform: scale(1); opacity: 0.8; }
           50% { transform: scale(1.3); opacity: 0.4; }
         }
         #glow-1 { animation: float-slow 8s ease-in-out infinite; }
         #glow-2 { animation: float-medium 12s ease-in-out infinite; }
         #glow-3 { animation: float-fast 9s ease-in-out infinite; }
         #glow-4 { animation: float-slow 11s ease-in-out infinite reverse; }
         #glow-5 { animation: float-medium 14s ease-in-out infinite reverse; }
         #glow-6 { animation: float-diagonal 10s ease-in-out infinite; }
         #glow-7 { animation: float-wave 13s ease-in-out infinite; }
         #glow-8 { animation: float-pulse 7s ease-in-out infinite; }
       `}
     </style>

     <svg width="860" height="300" style={{ position: 'absolute', top: 0, left: 0 }}>
       <defs>
         <radialGradient id="g1" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(196,72,28,0.72)" />
           <stop offset="40%" stopColor="rgba(180,50,30,0.32)" />
           <stop offset="70%" stopColor="rgba(180,50,30,0)" />
         </radialGradient>
         <radialGradient id="g2" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(59,130,246,0.55)" />
           <stop offset="45%" stopColor="rgba(37,99,235,0.22)" />
           <stop offset="70%" stopColor="rgba(37,99,235,0)" />
         </radialGradient>
         <radialGradient id="g3" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(125,211,252,0.40)" />
           <stop offset="50%" stopColor="rgba(56,189,248,0.16)" />
           <stop offset="70%" stopColor="rgba(56,189,248,0)" />
         </radialGradient>
         <radialGradient id="g4" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(239,68,68,0.38)" />
           <stop offset="70%" stopColor="rgba(239,68,68,0)" />
         </radialGradient>
         <radialGradient id="g5" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(30,58,95,0.55)" />
           <stop offset="70%" stopColor="rgba(30,58,95,0)" />
         </radialGradient>
         <radialGradient id="g6" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(249,115,22,0.42)" />
           <stop offset="45%" stopColor="rgba(234,88,12,0.18)" />
           <stop offset="70%" stopColor="rgba(234,88,12,0)" />
         </radialGradient>
         <radialGradient id="g7" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(96,165,250,0.45)" />
           <stop offset="50%" stopColor="rgba(59,130,246,0.16)" />
           <stop offset="70%" stopColor="rgba(59,130,246,0)" />
         </radialGradient>
         <radialGradient id="g8" cx="50%" cy="50%" r="50%">
           <stop offset="0%" stopColor="rgba(254,202,202,0.22)" />
           <stop offset="50%" stopColor="rgba(248,113,113,0.12)" />
           <stop offset="70%" stopColor="rgba(248,113,113,0)" />
         </radialGradient>
       </defs>
       <ellipse id="glow-1" cx="180" cy="280" rx="260" ry="190" fill="url(#g1)" />
       <ellipse id="glow-2" cx="300" cy="290" rx="220" ry="160" fill="url(#g2)" />
       <ellipse id="glow-3" cx="420" cy="290" rx="180" ry="140" fill="url(#g3)" />
       <ellipse id="glow-4" cx="550" cy="300" rx="150" ry="120" fill="url(#g4)" />
       <ellipse id="glow-5" cx="750" cy="300" rx="130" ry="110" fill="url(#g5)" />
       <ellipse id="glow-6" cx="300" cy="290" rx="180" ry="140" fill="url(#g6)" />
       <ellipse id="glow-7" cx="490" cy="280" rx="220" ry="170" fill="url(#g7)" />
       <ellipse id="glow-8" cx="590" cy="300" rx="150" ry="130" fill="url(#g8)" />
     </svg>

     <div style={{ display: 'flex', alignItems: 'center' }}>
       <div style={{
         display: 'flex', alignItems: 'center', justifyContent: 'center',
         width: 96, height: 96, borderRadius: 48,
         background: 'linear-gradient(135deg, #c4481c, #60a5fa)',
         flexShrink: 0,
       }}>
         <img src={avatar} width={88} height={88} style={{ borderRadius: 44 }} />
       </div>

       <div style={{ display: 'flex', flexDirection: 'column', marginLeft: 24, gap: 8, width: 430 }}>
         <div style={{ display: 'flex', fontSize: 28, fontWeight: 800, color: '#ffffff', letterSpacing: '-0.5px', lineHeight: 1.2 }}>
           React Native Developer
         </div>
         <div style={{ display: 'flex', fontSize: 20, color: 'rgba(186,214,240,0.88)', fontWeight: 500, letterSpacing: '0.2px' }}>
           with 5 years of experience
         </div>
       </div>

       <div style={{
         display: 'flex', flexDirection: 'column',
         alignItems: 'center', justifyContent: 'center',
         gap: 5, width: 168,
       }}>
         <div style={{ display: 'flex', fontSize: 30, fontWeight: 800, color: '#fb7185', lineHeight: 1 }}>
           __CONTRIBUTIONS__
         </div>
         <div style={{ display: 'flex', fontSize: 11, color: 'rgba(186,214,240,0.5)', fontWeight: 600, letterSpacing: '1.5px' }}>
           CONTRIBUTIONS
         </div>
         <div style={{ display: 'flex', fontSize: 10, color: 'rgba(186,214,240,0.35)', fontWeight: 600, letterSpacing: '1.2px' }}>
           LAST 12 MONTHS
         </div>
       </div>
     </div>

     <div style={{ display: 'flex', height: 1, background: 'rgba(96,165,250,0.18)', marginTop: 20, marginBottom: 16 }} />

     <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
       <div style={{ display: 'flex', fontSize: 10, fontWeight: 700, color: 'rgba(186,214,240,0.5)', letterSpacing: '3px' }}>
         TECH STACK
       </div>
       {categories.map(function(cat) {
         return (
           <div key={cat.title} style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
             <div style={{ display: 'flex', fontSize: 10, fontWeight: 700, color: cat.color, letterSpacing: '1px', width: 80 }}>
               {cat.title.toUpperCase()}
             </div>
             <div style={{ display: 'flex', flexWrap: 'wrap', gap: 7 }}>
               {cat.items.map(function(item) {
                 return (
                   <div key={item} style={{
                     display: 'flex', padding: '4px 13px', borderRadius: 6,
                     background: cat.color + '18', border: '1px solid ' + cat.color + '40',
                     color: 'rgba(230,236,245,0.9)', fontSize: 12, fontWeight: 600,
                   }}>{item}</div>
                 );
               })}
             </div>
           </div>
         );
       })}
     </div>
   </div>
 );
})()
```

```aura width=138 height=44 link="https://www.linkedin.com/in/wojciech-boman-788517203" inline align=center
<SocialMediaButton
  icon="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0iI2ZmZmZmZiIgcm9sZT0iaW1nIj48cGF0aCBkPSJNMjAuNDQ3IDIwLjQ1MmgtMy41NTR2LTUuNTY5YzAtMS4zMjgtLjAyNy0zLjAzNy0xLjg1Mi0zLjAzNy0xLjg1MyAwLTIuMTM2IDEuNDQ1LTIuMTM2IDIuOTM5djUuNjY3SDkuMzUxVjloMy40MTR2MS41NjFoLjA0NmMuNDc3LS45IDEuNjM3LTEuODUgMy4zNy0xLjg1IDMuNjAxIDAgNC4yNjcgMi4zNyA0LjI2NyA1LjQ1NXY2LjI4NnpNNS4zMzcgNy40MzNjLTEuMTQ0IDAtMi4wNjMtLjkyNi0yLjA2My0yLjA2NSAwLTEuMTM4LjkyLTIuMDYzIDIuMDYzLTIuMDYzIDEuMTQgMCAyLjA2NC45MjUgMi4wNjQgMi4wNjMgMCAxLjEzOS0uOTI1IDIuMDY1LTIuMDY0IDIuMDY1em0xLjc4MiAxMy4wMTlIMy41NTVWOWgzLjU2NHYxMS40NTJ6TTIyLjIyNSAwSDEuNzcxQy43OTIgMCAwIC43NzQgMCAxLjcyOXYyMC41NDJDMCAyMy4yMjcuNzkyIDI0IDEuNzcxIDI0aDIwLjQ1MUMyMy4yIDI0IDI0IDIzLjIyNyAyNCAyMi4yNzFWMS43MjlDMjQgLjc3NCAyMy4yIDAgMjIuMjIyIDBoLjAwM3oiLz48L3N2Zz4="
  text="LinkedIn"
  backgroundColor="#0a1018"
  width={138}
  height={44}
  gradientStops={[
    { offset: '0%', color: '#ffffff' },
    { offset: '10%', color: '#111111' },
    { offset: '50%', color: '#eeeeee' },
    { offset: '60%', color: '#c4481c' },
    { offset: '80%', color: '#111111' },
    { offset: '100%', color: '#3b82f6' },
  ]}
/>
```

```aura width=120 height=44 link="mailto:wojciechboman@gmail.com" inline align=center
<SocialMediaButton
  icon="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0iI2ZmZmZmZiIgcm9sZT0iaW1nIj48cGF0aCBkPSJNMjQgNS40NTd2MTMuOTA5YzAgLjkwNC0uNzMyIDEuNjM2LTEuNjM2IDEuNjM2aC0zLjgxOVYxMS43M0wxMiAxNi42NGwtNi41NDUtNC45MXY5LjI3M0gxLjYzNkExLjYzNiAxLjYzNiAwIDAgMSAwIDE5LjM2NlY1LjQ1N2MwLTIuMDIzIDIuMzA5LTMuMTc4IDMuOTI3LTEuOTY0TDUuNDU1IDQuNjQgMTIgOS41NDhsNi41NDUtNC45MSAxLjUyOC0xLjE0NUMyMS42OSAyLjI4IDI0IDMuNDM0IDI0IDUuNDU3eiIvPjwvc3ZnPg=="
  text="Gmail"
  backgroundColor="#0a1018"
  width={120}
  height={44}
  gradientStops={[
    { offset: '0%', color: '#ffffff' },
    { offset: '10%', color: '#111111' },
    { offset: '50%', color: '#eeeeee' },
    { offset: '60%', color: '#c4481c' },
    { offset: '80%', color: '#111111' },
    { offset: '100%', color: '#3b82f6' },
  ]}
/>
```

<br>
<p align="center"><sub>𝗉𝗈𝗐𝖾𝗋𝖾𝖽 𝖻𝗒 <a href="https://github.com/collectioneur/readme-aura">𝗋𝖾𝖺𝖽𝗆𝖾-𝖺𝗎𝗋𝖺</a></sub></p>
