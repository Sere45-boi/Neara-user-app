import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:sixam_mart/helper/responsive_helper.dart';
import 'package:sixam_mart/util/dimensions.dart';
import 'package:sixam_mart/features/order/controllers/order_controller.dart';

class OrderShimmerWidget extends StatelessWidget {
  final OrderController? orderController;
  const OrderShimmerWidget({super.key, this.orderController});

  @override
  Widget build(BuildContext context) {

    final bool isDesktop = ResponsiveHelper.isDesktop(context);
    final bool isMobile = ResponsiveHelper.isMobile(context);

    return Center(
      child: SizedBox(
        width: Dimensions.webMaxWidth,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(isDesktop
              ? Dimensions.paddingSizeLarge
              : Dimensions.paddingSizeSmall),

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile ? 1 : 2,
            mainAxisSpacing: isDesktop ? 30 : 16,
            crossAxisSpacing: isDesktop ? 30 : 16,
            childAspectRatio: isDesktop ? 5 : 2.9,
          ),

          itemCount: 10,
          itemBuilder: (_, index) {
            return _ShimmerCard(isDesktop: isDesktop, orderController: orderController);
          },
        ),
      ),
    );
  }
}

class _ShimmerCard extends StatelessWidget {
  final bool isDesktop;
  final OrderController? orderController;
  const _ShimmerCard({required this.isDesktop, required this.orderController});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isDesktop
          ? BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, spreadRadius: 1)
        ],
      )
          : BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
      child: Shimmer(
        enabled: orderController?.runningOrderModel == null,
        duration: const Duration(seconds: 2),
        child: Column(
          children: [

            // TOP ROW
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Placeholder
                Container(
                  height: isDesktop ? 80 : 60,
                  width: isDesktop ? 80 : 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
                    color: Theme.of(context).shadowColor,
                  ),
                ),

                const SizedBox(width: Dimensions.paddingSizeSmall),

                // Title + Description
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15,
                        width: 120,
                        color: Theme.of(context).shadowColor,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 15,
                        width: 160,
                        color: Theme.of(context).shadowColor,
                      ),
                    ],
                  ),
                ),

                // Status / Action
                Column(
                  children: [
                    if (!isDesktop)
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Theme.of(context).shadowColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    const SizedBox(height: 8),
                    Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Theme.of(context).shadowColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ],
                )
              ],
            ),

            // DIVIDER (mobile only)
            if (!isDesktop)
              Padding(
                padding: const EdgeInsets.only(top: Dimensions.paddingSizeSmall),
                child: Divider(
                  color: Theme.of(context).disabledColor,
                  thickness: 0.7,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
