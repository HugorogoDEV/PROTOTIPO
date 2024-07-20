import 'dart:math';

import 'package:flutter/material.dart';
import 'package:prototipo/src/pages/orders/order_model.dart';
import 'package:prototipo/src/services/utils_services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PaymentDialog extends StatelessWidget {
  final OrderModel order;

  PaymentDialog({super.key, required this.order});

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Titulo
          const Text(
            'Pagamento com Pix',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          // QR Code
          QrImageView(
            data: 'daasdasdasdasadasdauydyguguywdgyqgd',
            version: QrVersions.auto,
            size: 200.0,
          ),
          // Vencimento

          Text(
            'Vencimento: ${utilsServices.formatDateTime(order.overdueDateTime)}',
            style: const TextStyle(
              fontSize: 12,
            ),
          )

          // Total
          // Botão copia e cola
        ],
      ),
    );
  }
}
