.class public interface abstract Lcom/android/okhttp/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Dns$1;
    }
.end annotation


# static fields
.field public static final SYSTEM:Lcom/android/okhttp/Dns;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/okhttp/Dns$1;

    invoke-direct {v0}, Lcom/android/okhttp/Dns$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/Dns;->SYSTEM:Lcom/android/okhttp/Dns;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
