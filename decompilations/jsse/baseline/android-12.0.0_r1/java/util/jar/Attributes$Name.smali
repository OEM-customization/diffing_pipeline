.class public Ljava/util/jar/Attributes$Name;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# static fields
.field public static final whitelist test-api CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SEALED:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private greylist-max-o hashCode:I

.field private greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 533
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Manifest-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 541
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Signature-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 547
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    .line 556
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Class-Path"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 565
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Main-Class"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    .line 573
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Sealed"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 581
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-List"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 589
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 600
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Installation"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    .line 608
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 616
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 624
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 635
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor-Id"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    .line 646
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-URL"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    .line 654
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 662
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 670
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Specification-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    .line 460
    if-eqz p1, :cond_1b

    .line 463
    invoke-static {p1}, Ljava/util/jar/Attributes$Name;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    .line 467
    return-void

    .line 464
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isAlpha(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 487
    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static greylist-max-o isDigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 491
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static greylist-max-o isValid(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 483
    invoke-static {p0}, Ljava/util/jar/Attributes$Name;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Ljava/util/jar/Attributes$Name;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private static greylist-max-o isValid(Ljava/lang/String;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 471
    .local v0, "len":I
    const/4 v1, 0x0

    const/16 v2, 0x46

    if-gt v0, v2, :cond_1f

    if-nez v0, :cond_c

    goto :goto_1f

    .line 474
    :cond_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1d

    .line 475
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/util/jar/Attributes$Name;->isValid(C)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 476
    return v1

    .line 474
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 479
    .end local v2    # "i":I
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 472
    :cond_1f
    :goto_1f
    return v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 501
    instance-of v0, p1, Ljava/util/jar/Attributes$Name;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 502
    sget-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 503
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iget-object v2, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/util/jar/Attributes$Name;

    iget-object v3, v3, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    .line 505
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    :cond_16
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 513
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 514
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-static {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;->lowerCaseHashCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    .line 516
    :cond_d
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 523
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    return-object v0
.end method
