.class Ljava/io/ObjectInputStream$ValidationList$Callback;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream$ValidationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# instance fields
.field final acc:Ljava/security/AccessControlContext;

.field next:Ljava/io/ObjectInputStream$ValidationList$Callback;

.field final obj:Ljava/io/ObjectInputValidation;

.field final priority:I


# direct methods
.method constructor <init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V
    .registers 5
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .param p3, "next"    # Ljava/io/ObjectInputStream$ValidationList$Callback;
    .param p4, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 2211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2214
    iput-object p1, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->obj:Ljava/io/ObjectInputValidation;

    .line 2215
    iput p2, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->priority:I

    .line 2216
    iput-object p3, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    .line 2217
    iput-object p4, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->acc:Ljava/security/AccessControlContext;

    .line 2218
    return-void
.end method
