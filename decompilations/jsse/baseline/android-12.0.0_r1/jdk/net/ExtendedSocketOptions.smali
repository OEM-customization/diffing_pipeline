.class public final Ljdk/net/ExtendedSocketOptions;
.super Ljava/lang/Object;
.source "ExtendedSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/net/ExtendedSocketOptions$ExtSocketOption;
    }
.end annotation


# static fields
.field public static final blacklist SO_FLOW_SLA:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "Ljdk/net/SocketFlow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;

    const-class v1, Ljdk/net/SocketFlow;

    const-string v2, "SO_FLOW_SLA"

    invoke-direct {v0, v2, v1}, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
