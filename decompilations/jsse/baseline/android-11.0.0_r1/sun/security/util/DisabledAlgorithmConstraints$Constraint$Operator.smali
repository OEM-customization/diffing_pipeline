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
        "Ljava/lang/Enum<",
        "Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum greylist-max-o EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum greylist-max-o GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum greylist-max-o GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum greylist-max-o LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum greylist-max-o LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

.field public static final enum greylist-max-o NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 382
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v1, "EQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 383
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v1, "NE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 384
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v1, "LT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 385
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v1, "LE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 386
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v1, "GT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 387
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v1, "GE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 381
    const/4 v1, 0x6

    new-array v1, v1, [Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    sget-object v8, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v8, v1, v2

    sget-object v2, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v2, v1, v3

    sget-object v2, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v2, v1, v4

    sget-object v2, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v2, v1, v5

    sget-object v2, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static greylist-max-o of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x3c

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_54

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x43c

    if-eq v0, v1, :cond_40

    const/16 v1, 0x781

    if-eq v0, v1, :cond_36

    const/16 v1, 0x7a0

    if-eq v0, v1, :cond_2c

    const/16 v1, 0x7bf

    if-eq v0, v1, :cond_22

    :cond_21
    goto :goto_5e

    :cond_22
    const-string v0, ">="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    goto :goto_5f

    :cond_2c
    const-string v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    goto :goto_5f

    :cond_36
    const-string v0, "<="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v4

    goto :goto_5f

    :cond_40
    const-string v0, "!="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v6

    goto :goto_5f

    :cond_4a
    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v3

    goto :goto_5f

    :cond_54
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v5

    goto :goto_5f

    :goto_5e
    const/4 v0, -0x1

    :goto_5f
    if-eqz v0, :cond_96

    if-eq v0, v6, :cond_93

    if-eq v0, v5, :cond_90

    if-eq v0, v4, :cond_8d

    if-eq v0, v3, :cond_8a

    if-ne v0, v2, :cond_6e

    .line 402
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 405
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in security property. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a legal Operator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_8a
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 398
    :cond_8d
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 396
    :cond_90
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 394
    :cond_93
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 392
    :cond_96
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 381
    const-class v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0
.end method

.method public static greylist-max-o values()[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .registers 1

    .line 381
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    invoke-virtual {v0}, [Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0
.end method
