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
    .registers 13

    .line 382
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v1, "EQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 383
    new-instance v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v3, "NE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 384
    new-instance v3, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v5, "LT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 385
    new-instance v5, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v7, "LE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 386
    new-instance v7, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v9, "GT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 387
    new-instance v9, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    const-string v11, "GE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    .line 381
    const/4 v11, 0x6

    new-array v11, v11, [Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->$VALUES:[Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

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
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    :cond_7
    goto :goto_44

    :sswitch_8
    const-string v0, ">="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_45

    :sswitch_12
    const-string v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_45

    :sswitch_1c
    const-string v0, "<="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_45

    :sswitch_26
    const-string v0, "!="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_45

    :sswitch_30
    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_45

    :sswitch_3a
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_45

    :goto_44
    const/4 v0, -0x1

    :goto_45
    packed-switch v0, :pswitch_data_90

    .line 405
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

    .line 402
    :pswitch_64
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 400
    :pswitch_67
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 398
    :pswitch_6a
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 396
    :pswitch_6d
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 394
    :pswitch_70
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    .line 392
    :pswitch_73
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    return-object v0

    :sswitch_data_76
    .sparse-switch
        0x3c -> :sswitch_3a
        0x3e -> :sswitch_30
        0x43c -> :sswitch_26
        0x781 -> :sswitch_1c
        0x7a0 -> :sswitch_12
        0x7bf -> :sswitch_8
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
    .end packed-switch
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
