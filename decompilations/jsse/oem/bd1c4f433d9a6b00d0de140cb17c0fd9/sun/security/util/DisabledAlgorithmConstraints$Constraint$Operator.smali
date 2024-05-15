.class final enum Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
.super Ljava/lang/Enum;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 382
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string/jumbo v1, "EQ"

    invoke-direct {v0, v1, v3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string/jumbo v1, "NE"

    invoke-direct {v0, v1, v4}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    .line 383
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string/jumbo v1, "LT"

    invoke-direct {v0, v1, v5}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    .line 384
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string/jumbo v1, "LE"

    invoke-direct {v0, v1, v6}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    .line 385
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string/jumbo v1, "GT"

    invoke-direct {v0, v1, v7}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    .line 386
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string/jumbo v1, "GE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    .line 387
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 381
    const/4 v0, 0x6

    new-array v0, v0, [Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v1, v0, v6

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v1, v0, v7

    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string/jumbo v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 392
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 390
    :cond_c
    const-string/jumbo v0, "!="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 394
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 390
    :cond_18
    const-string/jumbo v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 396
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 390
    :cond_24
    const-string/jumbo v0, "<="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 398
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 390
    :cond_30
    const-string/jumbo v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 400
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 390
    :cond_3c
    const-string/jumbo v0, ">="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 402
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 405
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error in security property. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    const-string/jumbo v2, " is not a legal Operator"

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 381
    const-class v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0
.end method

.method public static values()[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .registers 1

    .prologue
    .line 381
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0
.end method
