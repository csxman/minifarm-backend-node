const positionService = require('../services/position.service')

/**
 * @swagger
 * /position/{id}:
 *   get:
 *     summary: Get the position by id
 *     tags: [Positions]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: number
 *         required: true
 *         description: The position id
 *     responses:
 *       200:
 *         description: The position description by id
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/PositionResponse'
 *       404:
 *         description: The position was not found
 *       401:
 *         description: Un Authenticated
 *     security: [{ bearerAuth: [] }]
 */
exports.getAll = async (req, res) => res.json(await positionService.findAll(req.params.id))
