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
.field public static final CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final NAME:Ljava/util/jar/Attributes$Name;

.field public static final SEALED:Ljava/util/jar/Attributes$Name;

.field public static final SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private hashCode:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 534
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Manifest-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 542
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Signature-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 548
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Content-Type"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    .line 557
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Class-Path"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 566
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Main-Class"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    .line 574
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Sealed"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 582
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Extension-List"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 590
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Extension-Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 601
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Extension-Installation"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    .line 609
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Implementation-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 617
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Implementation-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 625
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Implementation-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 636
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Implementation-Vendor-Id"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    .line 647
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Implementation-URL"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    .line 655
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Specification-Title"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 663
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Specification-Version"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 671
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Specification-Vendor"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 676
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string/jumbo v1, "Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    .line 448
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    .line 461
    if-nez p1, :cond_11

    .line 462
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_11
    invoke-static {p1}, Ljava/util/jar/Attributes$Name;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    .line 468
    return-void
.end method

.method private static isAlpha(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    const/16 v2, 0x61

    if-lt p0, v2, :cond_b

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x41

    if-lt p0, v2, :cond_13

    const/16 v2, 0x5a

    if-le p0, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method private static isDigit(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 492
    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private static isValid(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 484
    invoke-static {p0}, Ljava/util/jar/Attributes$Name;->isAlpha(C)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/util/jar/Attributes$Name;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x5f

    if-ne p0, v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_11

    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isValid(Ljava/lang/String;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 472
    .local v1, "len":I
    const/16 v2, 0x46

    if-gt v1, v2, :cond_b

    if-nez v1, :cond_c

    .line 473
    :cond_b
    return v3

    .line 475
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1d

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/util/jar/Attributes$Name;->isValid(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 477
    return v3

    .line 475
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 480
    :cond_1d
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 502
    instance-of v2, p1, Ljava/util/jar/Attributes$Name;

    if-eqz v2, :cond_15

    .line 503
    sget-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 504
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    iget-object v2, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    check-cast p1, Ljava/util/jar/Attributes$Name;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v3, p1, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 506
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_15
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 514
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 515
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-static {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;->lowerCaseHashCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    .line 517
    :cond_d
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    return-object v0
.end method
