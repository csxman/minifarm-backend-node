const departmentService = require('../services/department.service')

/**
 * @swagger
 * /department/{id}:
 *   get:
 *     summary: Get the department by id
 *     tags: [Departments]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: number
 *         required: true
 *         description: The department id
 *     responses:
 *       200:
 *         description: The department description by id
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/DepartmentResponse'
 *       404:
 *         description: The department was not found
 *       401:
 *         description: Un Authenticated
 *     security: [{ bearerAuth: [] }]
 */
exports.getAll = async (req, res) => res.json(await departmentService.findAll(req.params.id))
