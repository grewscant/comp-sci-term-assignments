const getRandomColor = () => {
    let colors = [
        {
            primary: "#FCCD04",
            accent: "#8318AB"
        },{
            primary: "#5cdb95",
            accent: "#05386b"
        },{
            primary: "#67FDF1",
            accent: "#0B0C10"
        },{
            primary: "#EE4D7C",
            accent: "#5c032b"
        },{
            primary: "#EFE1BA",
            accent: "#92630d"
        },{
            primary: "#F7E8A1",
            accent: "#721111"
        }
    ];

    let randomElementIndex = Math.floor(Math.random() * colors.length);
    console.log("Object no. ", randomElementIndex);
    return colors[randomElementIndex];
}

const changeCssColorVariables = () => {
    let pageRootElement = document.querySelector(':root');  
    let randomColor = getRandomColor();

    pageRootElement.style.setProperty('--color-primary', randomColor.primary);
    pageRootElement.style.setProperty('--color-accent', randomColor.accent);
}

changeCssColorVariables();

