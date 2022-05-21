export const data = [
    {
        "id": 1,
        "name": 'Land Preparation',
        "task": [
            {
                "name": 'Land Clearing',
                "id": 1,
                "machine": [
                    {
                        "id": 1,
                        "name": 'Dozer',
                        "time": 180
                    },

                    { 
                        "id": 2,
                        "name": 'Tractor + Cultivator',
                        "time": 120
                    }
                ]
            },

            {
                "name": 'Plowing',
                "id": 2,
                "machine": [
                    {
                        "id": 1,
                        "name": "Tractor + Plow",
                        "time": 45
                    }
                ]
            },

            {
                "name": 'Harrowing',
                "id": 3,
                "machine": [
                    {
                        "id": 1,
                        "name": "Tractor + Harrow",
                        "time": 30
                    }
                ]
            },

            {
                "name": 'Ridging',
                "id": 4,
                "machine": [
                    {
                        "id": 1,
                        "name": "Tractor + Ridger",
                        "time": 30
                    }
                ]
            },

        ]
    },

    {
        "id": 2,
        "name": 'Soil treatment & Weed control',
        "task": [
            {
                "name": 'Soil treatment & Weed control',
                "id": 1,
                "machine": [
                    {
                        "id": 1,
                        "name": 'Boom',
                        "time": 50
                    },

                    {
                        "id": 2,
                        "name": 'Drone',
                        "time": 20
                    },

                    {
                        "id": 3,
                        "name": 'KnapSack',
                        "time": 60
                    }
                ]
            }
        ]
    },

    {
        "id": 3,
        "name": 'Transplanting',
        "task": [
            {
                "name": 'Transplanting',
                "id": 1,
                "machine": [
                    {
                        "id": 1,
                        "name": 'Labour',
                        "time": 360
                    }
                ]
            }
        ]
    },

    {
        "id": 4,
        "name": 'Crop Care',
        "task": [
            {
                "name": 'Fertilizer Application',
                "id": 1,
                "machine": [
                    {
                        "id": 1,
                        "name": '',
                        "time": 0
                    }
                ]
            },

            {
                "name": 'Insect + Disease Control',
                "id": 2,
                "machine": [
                    {
                        "id": 1,
                        "name": 'Boom',
                        "time": 50
                    },

                    {
                        "id": 2,
                        "name": 'Drone',
                        "time": 20
                    },

                    {
                        "id": 3,
                        "name": 'Knapsack',
                        "time": 60
                    }
                ]
            },

            {
                "name": 'Manual weed control',
                "id": 3,
                "machine": [
                    {
                        "id": 1,
                        "name": 'manual',
                        "time": 60
                    },

                    {
                        "id": 2,
                        "name": 'mechanical',
                        "time": 120
                    }
                ]
            },

            {
                "name": 'Chemical weed control',
                "id": 3,
                "machine": [
                    {
                        "id": 1,
                        "name": 'Boom',
                        "time": 40
                    },

                    {
                        "id": 2,
                        "name": 'Drone',
                        "time": 18
                    },

                    {
                        "id": 3,
                        "name": 'Knapsack',
                        "time": 50
                    },
                ]
            },
        ]
    }
]

export default data;