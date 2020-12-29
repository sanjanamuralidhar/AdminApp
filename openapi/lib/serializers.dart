library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/about.dart';
import 'package:openapi/model/about_dto.dart';
import 'package:openapi/model/auth_info_vm.dart';
import 'package:openapi/model/aux_item.dart';
import 'package:openapi/model/auxilary_order_line.dart';
import 'package:openapi/model/banner.dart';
import 'package:openapi/model/banner_dto.dart';
import 'package:openapi/model/cancellation_details.dart';
import 'package:openapi/model/cancellation_request.dart';
import 'package:openapi/model/cancellation_request_dto.dart';
import 'package:openapi/model/cancellation_summary.dart';
import 'package:openapi/model/cancelled_auxilary_order_line.dart';
import 'package:openapi/model/cancelled_auxilary_order_line_dto.dart';
import 'package:openapi/model/cancelled_order_line.dart';
import 'package:openapi/model/cancelled_order_line_dto.dart';
import 'package:openapi/model/combo_item.dart';
import 'package:openapi/model/contact.dart';
import 'package:openapi/model/customer.dart';
import 'package:openapi/model/data_response.dart';
import 'package:openapi/model/deduction_value_type_dto.dart';
import 'package:openapi/model/delivery_info.dart';
import 'package:openapi/model/favourite_product.dart';
import 'package:openapi/model/favourite_store.dart';
import 'package:openapi/model/feedback.dart';
import 'package:openapi/model/notification_dto.dart';
import 'package:openapi/model/offer_dto.dart';
import 'package:openapi/model/offer_line.dart';
import 'package:openapi/model/offer_model.dart';
import 'package:openapi/model/order.dart';
import 'package:openapi/model/order_line.dart';
import 'package:openapi/model/order_master.dart';
import 'package:openapi/model/order_master_dto.dart';
import 'package:openapi/model/order_model.dart';
import 'package:openapi/model/page_of_about.dart';
import 'package:openapi/model/page_of_banner.dart';
import 'package:openapi/model/page_of_cancellation_request.dart';
import 'package:openapi/model/page_of_feedback.dart';
import 'package:openapi/model/page_of_order_master.dart';
import 'package:openapi/model/page_of_store.dart';
import 'package:openapi/model/page_of_term.dart';
import 'package:openapi/model/pdf_dto.dart';
import 'package:openapi/model/pre_order_settings.dart';
import 'package:openapi/model/refund_dto.dart';
import 'package:openapi/model/refund_details.dart';
import 'package:openapi/model/refund_details_dto.dart';
import 'package:openapi/model/report_summary.dart';
import 'package:openapi/model/route_vm.dart';
import 'package:openapi/model/service_instance.dart';
import 'package:openapi/model/sort.dart';
import 'package:openapi/model/status.dart';
import 'package:openapi/model/store.dart';
import 'package:openapi/model/store_address.dart';
import 'package:openapi/model/store_dto.dart';
import 'package:openapi/model/store_settings.dart';
import 'package:openapi/model/store_type.dart';
import 'package:openapi/model/sub_term.dart';
import 'package:openapi/model/sub_term_dto.dart';
import 'package:openapi/model/term.dart';
import 'package:openapi/model/term_dto.dart';
import 'package:openapi/model/type.dart';
import 'package:openapi/model/uri.dart';
import 'package:openapi/model/user_dto.dart';
import 'package:openapi/model/user_rating_review.dart';


part 'serializers.g.dart';

@SerializersFor(const [
About,
AboutDTO,
AuthInfoVM,
AuxItem,
AuxilaryOrderLine,
Banner,
BannerDTO,
CancellationDetails,
CancellationRequest,
CancellationRequestDTO,
CancellationSummary,
CancelledAuxilaryOrderLine,
CancelledAuxilaryOrderLineDTO,
CancelledOrderLine,
CancelledOrderLineDTO,
ComboItem,
Contact,
Customer,
DataResponse,
DeductionValueTypeDTO,
DeliveryInfo,
FavouriteProduct,
FavouriteStore,
Feedback,
NotificationDTO,
OfferDTO,
OfferLine,
OfferModel,
Order,
OrderLine,
OrderMaster,
OrderMasterDTO,
OrderModel,
PageOfAbout,
PageOfBanner,
PageOfCancellationRequest,
PageOfFeedback,
PageOfOrderMaster,
PageOfStore,
PageOfTerm,
PdfDTO,
PreOrderSettings,
RefundDTO,
RefundDetails,
RefundDetailsDTO,
ReportSummary,
RouteVM,
ServiceInstance,
Sort,
Status,
Store,
StoreAddress,
StoreDTO,
StoreSettings,
StoreType,
SubTerm,
SubTermDTO,
Term,
TermDTO,
Type,
URI,
UserDTO,
UserRatingReview,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(About)]),
() => new ListBuilder<About>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AboutDTO)]),
() => new ListBuilder<AboutDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AuthInfoVM)]),
() => new ListBuilder<AuthInfoVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AuxItem)]),
() => new ListBuilder<AuxItem>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AuxilaryOrderLine)]),
() => new ListBuilder<AuxilaryOrderLine>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Banner)]),
() => new ListBuilder<Banner>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BannerDTO)]),
() => new ListBuilder<BannerDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancellationDetails)]),
() => new ListBuilder<CancellationDetails>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancellationRequest)]),
() => new ListBuilder<CancellationRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancellationRequestDTO)]),
() => new ListBuilder<CancellationRequestDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancellationSummary)]),
() => new ListBuilder<CancellationSummary>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancelledAuxilaryOrderLine)]),
() => new ListBuilder<CancelledAuxilaryOrderLine>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancelledAuxilaryOrderLineDTO)]),
() => new ListBuilder<CancelledAuxilaryOrderLineDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancelledOrderLine)]),
() => new ListBuilder<CancelledOrderLine>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CancelledOrderLineDTO)]),
() => new ListBuilder<CancelledOrderLineDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ComboItem)]),
() => new ListBuilder<ComboItem>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Contact)]),
() => new ListBuilder<Contact>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Customer)]),
() => new ListBuilder<Customer>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(DataResponse)]),
() => new ListBuilder<DataResponse>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(DeductionValueTypeDTO)]),
() => new ListBuilder<DeductionValueTypeDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(DeliveryInfo)]),
() => new ListBuilder<DeliveryInfo>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FavouriteProduct)]),
() => new ListBuilder<FavouriteProduct>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FavouriteStore)]),
() => new ListBuilder<FavouriteStore>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Feedback)]),
() => new ListBuilder<Feedback>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(NotificationDTO)]),
() => new ListBuilder<NotificationDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OfferDTO)]),
() => new ListBuilder<OfferDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OfferLine)]),
() => new ListBuilder<OfferLine>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OfferModel)]),
() => new ListBuilder<OfferModel>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Order)]),
() => new ListBuilder<Order>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderLine)]),
() => new ListBuilder<OrderLine>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderMaster)]),
() => new ListBuilder<OrderMaster>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderMasterDTO)]),
() => new ListBuilder<OrderMasterDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OrderModel)]),
() => new ListBuilder<OrderModel>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PageOfAbout)]),
() => new ListBuilder<PageOfAbout>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PageOfBanner)]),
() => new ListBuilder<PageOfBanner>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PageOfCancellationRequest)]),
() => new ListBuilder<PageOfCancellationRequest>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PageOfFeedback)]),
() => new ListBuilder<PageOfFeedback>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PageOfOrderMaster)]),
() => new ListBuilder<PageOfOrderMaster>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PageOfStore)]),
() => new ListBuilder<PageOfStore>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PageOfTerm)]),
() => new ListBuilder<PageOfTerm>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PdfDTO)]),
() => new ListBuilder<PdfDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PreOrderSettings)]),
() => new ListBuilder<PreOrderSettings>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RefundDTO)]),
() => new ListBuilder<RefundDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RefundDetails)]),
() => new ListBuilder<RefundDetails>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RefundDetailsDTO)]),
() => new ListBuilder<RefundDetailsDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ReportSummary)]),
() => new ListBuilder<ReportSummary>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(RouteVM)]),
() => new ListBuilder<RouteVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceInstance)]),
() => new ListBuilder<ServiceInstance>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Sort)]),
() => new ListBuilder<Sort>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Status)]),
() => new ListBuilder<Status>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Store)]),
() => new ListBuilder<Store>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StoreAddress)]),
() => new ListBuilder<StoreAddress>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StoreDTO)]),
() => new ListBuilder<StoreDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StoreSettings)]),
() => new ListBuilder<StoreSettings>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StoreType)]),
() => new ListBuilder<StoreType>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SubTerm)]),
() => new ListBuilder<SubTerm>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SubTermDTO)]),
() => new ListBuilder<SubTermDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Term)]),
() => new ListBuilder<Term>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TermDTO)]),
() => new ListBuilder<TermDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Type)]),
() => new ListBuilder<Type>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(URI)]),
() => new ListBuilder<URI>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserDTO)]),
() => new ListBuilder<UserDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserRatingReview)]),
() => new ListBuilder<UserRatingReview>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
