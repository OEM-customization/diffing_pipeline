.class Ljava/io/ObjectStreamClass$ExceptionInfo;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExceptionInfo"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cn"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Ljava/io/ObjectStreamClass$ExceptionInfo;->className:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Ljava/io/ObjectStreamClass$ExceptionInfo;->message:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method newInvalidClassException()Ljava/io/InvalidClassException;
    .registers 4

    .prologue
    .line 147
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v1, p0, Ljava/io/ObjectStreamClass$ExceptionInfo;->className:Ljava/lang/String;

    iget-object v2, p0, Ljava/io/ObjectStreamClass$ExceptionInfo;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
