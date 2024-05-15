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
.field private final handle:Ljava/lang/invoke/MethodHandle;

.field private final member:Ljava/lang/reflect/Member;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/invoke/MethodHandle;)V
    .registers 3
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "handle"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    .line 70
    iput-object p2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    .line 71
    return-void
.end method


# virtual methods
.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethodType()Ljava/lang/invoke/MethodType;
    .registers 5

    .prologue
    .line 127
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 129
    .local v0, "handleType":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x0

    .line 134
    .local v1, "omitLeadingParam":Z
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v2, v2, Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_14

    .line 135
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 136
    const/4 v1, 0x1

    .line 141
    :cond_14
    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 151
    :goto_1d
    :pswitch_1d
    if-eqz v1, :cond_25

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .end local v0    # "handleType":Ljava/lang/invoke/MethodType;
    :cond_25
    return-object v0

    .line 148
    .restart local v0    # "handleType":Ljava/lang/invoke/MethodType;
    :pswitch_26
    const/4 v1, 0x1

    goto :goto_1d

    .line 141
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1d
        :pswitch_26
        :pswitch_1d
        :pswitch_1d
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method public getModifiers()I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_a

    .line 117
    const-string/jumbo v0, "<init>"

    return-object v0

    .line 120
    :cond_a
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceKind()I
    .registers 4

    .prologue
    const/4 v1, 0x7

    .line 75
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    .line 105
    :pswitch_a
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected handle kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->handle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->getHandleKind()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 77
    :pswitch_2a
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 78
    const/16 v0, 0x9

    return v0

    .line 80
    :cond_39
    const/4 v0, 0x5

    return v0

    .line 85
    :pswitch_3b
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_44

    .line 86
    const/16 v0, 0x8

    return v0

    .line 88
    :cond_44
    return v1

    .line 93
    :pswitch_45
    return v1

    .line 95
    :pswitch_46
    const/4 v0, 0x6

    return v0

    .line 97
    :pswitch_48
    const/4 v0, 0x1

    return v0

    .line 99
    :pswitch_4a
    const/4 v0, 0x3

    return v0

    .line 101
    :pswitch_4c
    const/4 v0, 0x2

    return v0

    .line 103
    :pswitch_4e
    const/4 v0, 0x4

    return v0

    .line 75
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_45
        :pswitch_3b
        :pswitch_46
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_48
        :pswitch_4a
        :pswitch_4c
        :pswitch_4e
    .end packed-switch
.end method

.method public reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/reflect/Member;
    .registers 8
    .param p2, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 158
    iget-object v3, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    iget-object v4, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    invoke-interface {v4}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {p2, v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1b} :catch_1e

    .line 163
    iget-object v1, p0, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;->member:Ljava/lang/reflect/Member;

    return-object v1

    .line 159
    :catch_1e
    move-exception v0

    .line 160
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unable to access member."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
