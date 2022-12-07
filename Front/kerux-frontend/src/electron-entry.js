const {app , BrowserWindow, Menu, ipcMain} = require('electron')
const path = require('path')

let win



const creatWindow = () => {
  
  const win = new BrowserWindow ({
    minWidth: 1000,
    minHeight: 700,
    width : 1000 ,
    height : 700,
    icon: './icon/logo-kerux-food-.png',
    title: "KERUX",

    webPreferences: {
     nodeIntegration:false,
      
      //preload: path.join( __dirname, './test/preload.js')
      
      contextIsolation: false
    },
  })
  
  //win.loadFile('./login/login.html')
  win.loadURL("http://localhost:3000/login")
  win.webContents.openDevTools()
  
   
  
}


app.whenReady().then( () => {
    creatWindow()
})
app.on('window-all-closed', function() {
    app.quit()
})

app.on('activate', function() {
    if(win === null){
        creatWindow()
    }
})

