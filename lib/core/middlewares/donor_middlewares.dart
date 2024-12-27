import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';

UploadDonorComplianceDTOBloodGroupEnum? getBloodGroupEnum(String value) {
  switch (value.toUpperCase()) {
    case 'A+':
      return UploadDonorComplianceDTOBloodGroupEnum.aPlus;
    case 'A-':
      return UploadDonorComplianceDTOBloodGroupEnum.A_;
    case 'B+':
      return UploadDonorComplianceDTOBloodGroupEnum.bPlus;
    case 'B-':
      return UploadDonorComplianceDTOBloodGroupEnum.B_;
    case 'AB+':
      return UploadDonorComplianceDTOBloodGroupEnum.aBPlus;
    case 'AB-':
      return UploadDonorComplianceDTOBloodGroupEnum.AB_;
    case 'O+':
      return UploadDonorComplianceDTOBloodGroupEnum.oPlus;
    case 'O-':
      return UploadDonorComplianceDTOBloodGroupEnum.O_;
    default:
      return null;
  }
}

UploadDonorComplianceDTOGenotypeEnum? getGenotypeEnum(String value) {
  switch (value.toUpperCase()) {
    case 'AA':
      return UploadDonorComplianceDTOGenotypeEnum.AA;
    case 'AS':
      return UploadDonorComplianceDTOGenotypeEnum.AS;
    case 'SS':
      return UploadDonorComplianceDTOGenotypeEnum.SS;
    case 'AC':
      return UploadDonorComplianceDTOGenotypeEnum.AC;
    default:
      return null;
  }
}

UploadDonorComplianceDTOIdentificationTypeEnum? getIdentificationTypeEnum(
    String value) {
  switch (value) {
    case "National Identity Card":
      return UploadDonorComplianceDTOIdentificationTypeEnum
          .nationalIdentityCard;
    case "Passport":
      return UploadDonorComplianceDTOIdentificationTypeEnum.passport;
    case "Voter's Card":
      return UploadDonorComplianceDTOIdentificationTypeEnum.voterCard;
    default:
      return null;
  }
}

String formatAppointmentStatus(AppointmentInfoStatusEnum status) {
  switch (status) {
    case AppointmentInfoStatusEnum.completed:
      return "Completed";
    case AppointmentInfoStatusEnum.cancelled:
      return "Cancelled";
    case AppointmentInfoStatusEnum.pending:
      return "Pending";
    case AppointmentInfoStatusEnum.noShow:
      return "No Show";
    case AppointmentInfoStatusEnum.expired:
      return "Expired";
    case AppointmentInfoStatusEnum.missed:
      return "Missed";
    case AppointmentInfoStatusEnum.rejected:
      return "Rejected";
    default:
      return capitalizeFirstLetter(status.name);
  }
}
