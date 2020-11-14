Chart.defaults.global.defaultFontColor = 'white';
Chart.defaults.global.defaultFontFamily = 'arial';

/*Satisfaction Chart*/
new Chart(document.getElementById("satisfaction-chart"),
    {
        type: 'horizontalBar',
        data: {
            labels: ["Trés satisfait", "Satisfait", "Moyennement satisfait", "Insatisfait", "Pas satisfait du tout"],
            datasets: [
                {
                    label: "Niveau de satisfaction",
                    backgroundColor: ["#188B22", "#66FF33", "#FFFF33", "#FF6600", "#FF330A"],
                    borderColor: "#ffffff",

                    data: [2478, 5267, 734, 784, 433]
                }
            ]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: "Niveau de satisfaction"
            },

            scales: {
                yAxes: [{
                    gridLines: {
                        display: false,
                        color: "#ffffff"
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "Niveau de satisfaction"
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: true,
                        color: "#222222",
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "Nombre d'individus"
                    }
                }]
            }
        }
    });

/*Population Chart*/
new Chart(document.getElementById("population-chart"), {
    type: 'doughnut',
    data: {
        labels: ["Homme", "Femme","Animal", "Créature", "Extra-terrestre", "Androïd"],
        datasets: [{
            label: "",
            backgroundColor: ["#3e95cd", "#e8c3b9", "#FFFF33","#FF6800","#188B22","#0245ff"],
            borderColor: "#ffffff",
            data: [5478,5267,1268,734,284,569]
        }]
    },
    options: {
        legend: {display: true,
            labels: {
                // This more specific font property overrides the global property
                fontColor: 'white'
            }
        },
        title: {
            display: true,
            text: "Proportion de categorie d'individus pour la totalité de la population"
        }
    }
});

/*Individus Chart*/
new Chart(document.getElementById("individus-chart"),
    {
        type: 'horizontalBar',
        data: {
            labels: ["Individus", "Citoyen", "Avenger", "Ennemis", "Victime"],
            datasets: [
                {
                    label: "",
                    backgroundColor: ["#000066", "#0066FF", "#FFFF33", "#FF330A", "#222222"],
                    borderColor: "#ffffff",
                    data: [5478, 4767, 434, 2184, 1633]
                }
            ]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: ''
            },

            scales: {
                yAxes: [{
                    gridLines: {
                        display: false,
                        color: "#ffffff"
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "Population"
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: true,
                        color: "#222222",
                    },
                    scaleLabel: {
                        display: true,
                        labelString: "Nombre d'individus"
                    }
                }]
            }
        }
    });


/*Incident Chart*/
new Chart(document.getElementById("incident-chart"),
    {
        type: 'horizontalBar',
        data: {
            labels: ["Incident", "Mission", "Crise", "Litige"],
            datasets: [
                {
                    label: "",
                    backgroundColor: ["#660000", "#990000", "#FF3300", "#FF9900"],
                    borderColor: "#ffffff",
                    data: [878, 767, 434, 184]
                }
            ]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: "Nombre d'incidents déclarés"
            },

            scales: {
                yAxes: [{
                    gridLines: {
                        display: false,
                        color: "#ffffff"
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "Incident"
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: true,
                        color: "#222222",
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "Quantité"
                    }
                }]
            }
        }
    });

new Chart(document.getElementById("gravite-chart"),
    {
        type: 'horizontalBar',
        data: {
            labels: ["Même pas mal", "Grave", "Super grave", "Gravissime"],
            datasets: [
                {
                    label: "",
                    backgroundColor: ["#009900","#FF9900", "#FF3300", "#CC0000"],
                    borderColor: "#ffffff",
                    data: [278, 851, 534, 24]
                }
            ]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: "Niveau de gravité par nombre incident"
            },

            scales: {
                yAxes: [{
                    gridLines: {
                        display: false,
                        color: "#ffffff"
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "gravité"
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: true,
                        color: "#222222",
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "gravité"
                    }
                }]
            }
        }
    });

new Chart(document.getElementById("urgence-chart"),
    {
        type: 'horizontalBar',
        data: {
            labels: ["Peut attendre", "Faut y aller...", "Ouh,la,la !", "Critique", "Fin du monde"],
            datasets: [
                {
                    label: "",
                    backgroundColor: ["#009900", "#006666", "#FF9900", "#FF3300", "#CC0000"],
                    borderColor: "#ffffff",
                    data: [704, 278, 851, 13, 5]
                }
            ]
        },
        options: {
            legend: {display: false},
            title: {
                display: true,
                text: "Niveau d'urgence par nombre de mission"
            },

            scales: {
                yAxes: [{
                    gridLines: {
                        display: false,
                        color: "#ffffff"
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "urgence"
                    }
                }],
                xAxes: [{
                    gridLines: {
                        display: true,
                        color: "#222222",
                    },
                    scaleLabel: {
                        display: false,
                        labelString: "urgence"
                    }
                }]
            }
        }
    });







