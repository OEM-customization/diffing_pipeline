.class abstract Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    }
.end annotation


# instance fields
.field algorithm:Ljava/lang/String;

.field nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 376
    return-void
.end method

.method synthetic constructor <init>(Lsun/security/util/DisabledAlgorithmConstraints$Constraint;)V
    .registers 2
    .param p1, "-this0"    # Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .prologue
    invoke-direct {p0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract permits(Lsun/security/util/CertConstraintParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation
.end method

.method public permits(Ljava/security/Key;)Z
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 416
    const/4 v0, 0x1

    return v0
.end method
