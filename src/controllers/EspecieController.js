const Especiecontroller = {};

Especiecontroller.index = (req, res) => {
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM especies', (err, especies) => {

            if (err) {
                res.json(err);
            }
            
            res.render('especies', {
                data: especies
            });

        });
    });
};

Especiecontroller.store = (req, res) => {
    const data = req.body;
    console.log(req.body)
    req.getConnection((err, connection) => {
        const query = connection.query('INSERT INTO especies set ?', data, (err, especies) => {
            console.log(especies)
            res.redirect('/listar_espoecies');
        })
    })

};

Especiecontroller.edit = (req, res) => {
    const { id } = req.params;
    req.getConnection((err, conn) => {
        conn.query("SELECT * FROM especies WHERE id = ?", [id], (err, rows) => {
            res.render('actualizar_especie', {
                data: rows[0]
            })
        });
    });
};

Especiecontroller.update = (req, res) => {

    const { id } = req.params;
    const newEspecies = req.body;

    req.getConnection((err, conn) => {
        conn.query('UPDATE especies set ? where id = ?', [newEspecies, id], (err, rows) => {
            res.redirect('/listar_espoecies');
        });
    });

};

Especiecontroller.destroy = (req, res) => {

    const { id } = req.params;

    req.getConnection((err, connection) => {
      connection.query('DELETE FROM especies WHERE id = ?', [id], (err, rows) => {
        res.redirect('/listar_espoecies');
      });
    });

}

/*
speciecontroller.show = (req, res) => {
    const { id } = req.params;
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM especies WHERE id = ?", [id], (err, especies) => {
            if (err) {
                res.json(err);
            }
            
            res.render('especies', {
                data: especies
            });
        });
    });
};

*/

module.exports = Especiecontroller;
