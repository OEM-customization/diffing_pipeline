.class public Ljava/lang/invoke/MethodHandleImpl;
.super Ljava/lang/invoke/MethodHandle;
.source "MethodHandleImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodHandleImpl$HandleInfo;
    }
.end annotation


# instance fields
.field private greylist-max-o info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;


# direct methods
.method constructor greylist-max-o <init>(JILjava/lang/invoke/MethodType;)V
    .registers 5
    .param p1, "artFieldOrMethod"    # J
    .param p3, "handleKind"    # I
    .param p4, "type"    # Ljava/lang/invoke/MethodType;

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/lang/invoke/MethodHandle;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native greylist-max-o getMemberInternal()Ljava/lang/reflect/Member;
.end method

.method greylist-max-o reveal()Ljava/lang/invoke/MethodHandleInfo;
    .registers 3

    .line 52
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    if-nez v0, :cond_f

    .line 53
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandleImpl;->getMemberInternal()Ljava/lang/reflect/Member;

    move-result-object v0

    .line 54
    .local v0, "member":Ljava/lang/reflect/Member;
    new-instance v1, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    invoke-direct {v1, v0, p0}, Ljava/lang/invoke/MethodHandleImpl$HandleInfo;-><init>(Ljava/lang/reflect/Member;Ljava/lang/invoke/MethodHandle;)V

    iput-object v1, p0, Ljava/lang/invoke/MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    .line 57
    .end local v0    # "member":Ljava/lang/reflect/Member;
    :cond_f
    iget-object v0, p0, Ljava/lang/invoke/MethodHandleImpl;->info:Ljava/lang/invoke/MethodHandleImpl$HandleInfo;

    return-object v0
.end method
