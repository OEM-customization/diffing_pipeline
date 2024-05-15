.class final Lsun/nio/cs/ThreadLocalCoders$2;
.super Lsun/nio/cs/ThreadLocalCoders$Cache;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/cs/ThreadLocalCoders$2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/cs/ThreadLocalCoders$2;->-assertionsDisabled:Z

    .line 112
    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .param p1, "$anonymous0"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lsun/nio/cs/ThreadLocalCoders$Cache;-><init>(I)V

    .line 1
    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 121
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 122
    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0

    .line 123
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_f
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1a

    .line 124
    check-cast p1, Ljava/nio/charset/Charset;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0

    .line 125
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_1a
    sget-boolean v0, Lsun/nio/cs/ThreadLocalCoders$2;->-assertionsDisabled:Z

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/Object;

    .prologue
    .line 114
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 115
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 116
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_13
    instance-of v0, p2, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_22

    .line 117
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    .end local p1    # "ob":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 118
    .restart local p1    # "ob":Ljava/lang/Object;
    :cond_22
    const/4 v0, 0x0

    return v0
.end method
