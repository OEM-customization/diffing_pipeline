.class Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
.super Ljava/lang/Object;
.source "MethodHandleImpl.java"

# interfaces
.implements Ljava/lang/invoke/MethodHandleInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodHandleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandleInfo"
.end annotation


# instance fields
.field private final greylist-max-o handle:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o member:Ljava/lang/reflect/Member;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/reflect/Member;Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "handle"    # Ljava/lang/invoke/MethodHandle;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    .line 75
    iput-object p2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    .line 76
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMethodType()Ljava/lang/invoke/MethodType;
    .registers 6

    .line 132
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 134
    .local v0, "handleType":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x0

    .line 139
    .local v1, "omitLeadingParam":Z
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v2, v2, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_14

    .line 140
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    .line 146
    :cond_14
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    if-eq v2, v3, :cond_2e

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2e

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2e

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2e

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2e

    goto :goto_2f

    .line 153
    :cond_2e
    const/4 v1, 0x1

    .line 156
    :goto_2f
    if-eqz v1, :cond_37

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v2

    goto :goto_38

    :cond_37
    move-object v2, v0

    :goto_38
    return-object v2
.end method

.method public whitelist core-platform-api test-api getModifiers()I
    .registers 2

    .line 173
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 3

    .line 121
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v1, v0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_9

    .line 122
    const-string v0, "<init>"

    return-object v0

    .line 125
    :cond_9
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getReferenceKind()I
    .registers 5

    .line 80
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v0

    if-eqz v0, :cond_44

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_43

    const/4 v3, 0x2

    if-eq v0, v3, :cond_39

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    packed-switch v0, :pswitch_data_56

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected handle kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 108
    :pswitch_32
    const/4 v0, 0x4

    return v0

    .line 106
    :pswitch_34
    return v3

    .line 104
    :pswitch_35
    return v1

    .line 102
    :pswitch_36
    return v2

    .line 100
    :cond_37
    const/4 v0, 0x6

    return v0

    .line 90
    :cond_39
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_42

    .line 91
    const/16 v0, 0x8

    return v0

    .line 93
    :cond_42
    return v1

    .line 98
    :cond_43
    return v1

    .line 82
    :cond_44
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 83
    const/16 v0, 0x9

    return v0

    .line 85
    :cond_53
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_56
    .packed-switch 0x9
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_32
    .end packed-switch
.end method

.method public whitelist core-platform-api test-api reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/reflect/Member;
    .registers 7
    .param p2, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TT;"
        }
    .end annotation

    .line 162
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    .line 163
    invoke-interface {v2}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    iget-object v3, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 166
    nop

    .line 168
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    return-object v0

    .line 164
    :catch_1f
    move-exception v0

    .line 165
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to access member."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
