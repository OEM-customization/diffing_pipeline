.class Ljava/lang/invoke/MethodHandleNatives;
.super Ljava/lang/Object;
.source "MethodHandleNatives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandleNatives$Constants;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 36
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist refKindIsField(B)Z
    .registers 2
    .param p0, "refKind"    # B

    .line 199
    nop

    .line 200
    const/4 v0, 0x4

    if-gt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static blacklist refKindIsValid(I)Z
    .registers 2
    .param p0, "refKind"    # I

    .line 196
    if-lez p0, :cond_8

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static blacklist refKindName(B)Ljava/lang/String;
    .registers 2
    .param p0, "refKind"    # B

    .line 243
    nop

    .line 244
    packed-switch p0, :pswitch_data_22

    .line 254
    const-string v0, "REF_???"

    return-object v0

    .line 253
    :pswitch_7
    const-string v0, "invokeInterface"

    return-object v0

    .line 252
    :pswitch_a
    const-string v0, "newInvokeSpecial"

    return-object v0

    .line 251
    :pswitch_d
    const-string v0, "invokeSpecial"

    return-object v0

    .line 250
    :pswitch_10
    const-string v0, "invokeStatic"

    return-object v0

    .line 249
    :pswitch_13
    const-string v0, "invokeVirtual"

    return-object v0

    .line 248
    :pswitch_16
    const-string v0, "putStatic"

    return-object v0

    .line 247
    :pswitch_19
    const-string v0, "putField"

    return-object v0

    .line 246
    :pswitch_1c
    const-string v0, "getStatic"

    return-object v0

    .line 245
    :pswitch_1f
    const-string v0, "getField"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method
