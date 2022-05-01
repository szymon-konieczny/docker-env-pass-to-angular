export const environment = {
  production: true,
  // @ts-ignore
  title: window['env']['title'] || 'Title placeholder - prod',
  // @ts-ignore
  description: window['env']['description'] || 'Description placeholder - prod',
  // @ts-ignore
  test: window['env']['test'] || 'Test - prod',
};
