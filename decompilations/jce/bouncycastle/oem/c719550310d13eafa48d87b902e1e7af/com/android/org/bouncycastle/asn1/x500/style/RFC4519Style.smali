.class public Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;
.super Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;
.source "RFC4519Style.java"


# static fields
.field private static final DefaultLookUp:Ljava/util/Hashtable;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

.field public static final businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field protected final defaultLookUp:Ljava/util/Hashtable;

.field protected final defaultSymbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.13"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.27"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.49"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.47"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.23"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.51"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.25"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.31"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.41"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.32"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.19"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.18"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.28"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.26"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.33"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.14"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.34"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.20"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.22"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.21"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.50"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.35"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.24"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "businessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "cn"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "dc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "destinationIndicator"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "distinguishedName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "dnQualifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "enhancedSearchGuide"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "facsimileTelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "generationQualifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "givenName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "houseIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "initials"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "internationalISDNNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "member"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "ou"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "owner"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "physicalDeliveryOfficeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "postalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "postalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "postOfficeBox"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "preferredDeliveryMethod"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "registeredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "roleOccupant"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "searchGuide"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "seeAlso"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "serialNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "sn"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "street"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "telephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "teletexTerminalIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "telexNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "uniqueMember"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "userPassword"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "x121Address"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "x500UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "businesscategory"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->businessCategory:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "c"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "cn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->cn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "dc"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "description"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->description:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "destinationindicator"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->destinationIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "distinguishedname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->distinguishedName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "dnqualifier"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "enhancedsearchguide"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->enhancedSearchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "facsimiletelephonenumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->facsimileTelephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "generationqualifier"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->generationQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "givenname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->givenName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "houseidentifier"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->houseIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "initials"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->initials:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "internationalisdnnumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->internationalISDNNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "l"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->l:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "member"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->member:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "name"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "o"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->o:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "ou"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->ou:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "owner"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->owner:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "physicaldeliveryofficename"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->physicalDeliveryOfficeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "postaladdress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "postalcode"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postalCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "postofficebox"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->postOfficeBox:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "preferreddeliverymethod"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->preferredDeliveryMethod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "registeredaddress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->registeredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "roleoccupant"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->roleOccupant:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "searchguide"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->searchGuide:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "seealso"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->seeAlso:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "serialnumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "sn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->sn:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "st"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->st:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "street"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->street:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "telephonenumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "teletexterminalidentifier"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->teletexTerminalIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "telexnumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telexNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "title"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->title:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "uid"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uid:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "uniquemember"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->uniqueMember:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "userpassword"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->userPassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "x121address"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x121Address:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    const-string/jumbo v1, "x500uniqueidentifier"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->x500UniqueIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 13
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;-><init>()V

    .line 174
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    .line 175
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    .line 176
    return-void
.end method


# virtual methods
.method public attrNameToOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->decodeAttrName(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method protected encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 184
    :cond_e
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->c:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->serialNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->dnQualifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 185
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    if-eqz v0, :cond_34

    .line 187
    :cond_2e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 190
    :cond_34
    invoke-super {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/style/AbstractX500NameStyle;->encodeStringValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 7
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {p1, p0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->rDNsFromString(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    .line 212
    .local v2, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v2

    new-array v1, v3, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 214
    .local v1, "res":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v3, v2

    if-eq v0, v3, :cond_16

    .line 216
    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v4, v2, v0

    aput-object v4, v1, v3

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 219
    :cond_16
    return-object v1
.end method

.method public oidToAttrNames(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .registers 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultLookUp:Ljava/util/Hashtable;

    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->findAttrNamesForOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oidToDisplayName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 195
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;
    .registers 8
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 228
    .local v1, "first":Z
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v3

    .line 230
    .local v3, "rdns":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_22

    .line 232
    if-eqz v1, :cond_1c

    .line 234
    const/4 v1, 0x0

    .line 241
    :goto_12
    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/style/RFC4519Style;->defaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0, v4, v5}, Lcom/android/org/bouncycastle/asn1/x500/style/IETFUtils;->appendRDN(Ljava/lang/StringBuffer;Lcom/android/org/bouncycastle/asn1/x500/RDN;Ljava/util/Hashtable;)V

    .line 230
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 238
    :cond_1c
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 244
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
