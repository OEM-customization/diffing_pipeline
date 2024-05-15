.class Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.super Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraint"
.end annotation


# static fields
.field private static final synthetic -sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I


# instance fields
.field private maxSize:I

.field private minSize:I

.field private prohibitedSize:I


# direct methods
.method private static synthetic -getsun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->values()[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_51

    :goto_17
    :try_start_17
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_4f

    :goto_20
    :try_start_20
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_4d

    :goto_29
    :try_start_29
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_4b

    :goto_32
    :try_start_32
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_49

    :goto_3b
    :try_start_3b
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_47

    :goto_44
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues:[I

    return-object v0

    :catch_47
    move-exception v1

    goto :goto_44

    :catch_49
    move-exception v1

    goto :goto_3b

    :catch_4b
    move-exception v1

    goto :goto_32

    :catch_4d
    move-exception v1

    goto :goto_29

    :catch_4f
    move-exception v1

    goto :goto_20

    :catch_51
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;I)V
    .registers 9
    .param p1, "algo"    # Ljava/lang/String;
    .param p2, "operator"    # Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .param p3, "length"    # I

    .prologue
    const/4 v4, -0x1

    const v3, 0x7fffffff

    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints$Constraint;)V

    .line 472
    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    .line 475
    iput-object p1, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    .line 476
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-getsun-security-util-DisabledAlgorithmConstraints$Constraint$OperatorSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 504
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 505
    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 507
    :goto_1e
    return-void

    .line 478
    :pswitch_1f
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 479
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 480
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    goto :goto_1e

    .line 483
    :pswitch_26
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 484
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    .line 487
    :pswitch_2b
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 488
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    .line 491
    :pswitch_30
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 492
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    .line 495
    :pswitch_37
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 496
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    .line 499
    :pswitch_3c
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 500
    const/4 v1, 0x1

    if-le p3, v1, :cond_43

    add-int/lit8 v0, p3, -0x1

    :cond_43
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_1e

    .line 476
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_3c
        :pswitch_37
        :pswitch_30
        :pswitch_2b
        :pswitch_26
    .end packed-switch
.end method

.method private permitsImpl(Ljava/security/Key;)Z
    .registers 7
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 547
    iget-object v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_f

    .line 548
    return v1

    .line 551
    :cond_f
    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v0

    .line 552
    .local v0, "size":I
    if-nez v0, :cond_16

    .line 553
    return v2

    .line 554
    :cond_16
    if-lez v0, :cond_29

    .line 555
    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    if-lt v0, v3, :cond_27

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    if-gt v0, v3, :cond_27

    .line 556
    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    if-eq v3, v0, :cond_25

    .line 555
    :goto_24
    return v1

    :cond_25
    move v1, v2

    .line 556
    goto :goto_24

    :cond_27
    move v1, v2

    .line 555
    goto :goto_24

    .line 560
    :cond_29
    return v1
.end method


# virtual methods
.method public permits(Lsun/security/util/CertConstraintParameters;)V
    .registers 8
    .param p1, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 518
    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 519
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_19

    .line 520
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    .line 521
    return-void

    .line 523
    :cond_19
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 524
    const-string/jumbo v1, "Algorithm constraints check failed on keysize limits"

    .line 525
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, -0x1

    move-object v3, v2

    .line 523
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 527
    :cond_26
    return-void
.end method

.method public permits(Ljava/security/Key;)Z
    .registers 5
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 535
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 536
    const/4 v0, 0x1

    return v0

    .line 538
    :cond_e
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 539
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeySizeConstraints.permits(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 542
    :cond_31
    invoke-direct {p0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method
