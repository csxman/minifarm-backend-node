const companyService = require('../services/company.service')

/**
 * @swagger
 * /company/{id}:
 *   get:
 *     summary: Get the company by id
 *     tags: [Companys]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: number
 *         required: true
 *         description: The company id
 *     responses:
 *       200:
 *         description: The company description by id
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/CompanyResponse'
 *       404:
 *         description: The company was not found
 *       401:
 *         description: Un Authenticated
 *     security: [{ bearerAuth: [] }]
 */
exports.getAll = async (req, res) => res.json(await companyService.findAll(req.params.id))
