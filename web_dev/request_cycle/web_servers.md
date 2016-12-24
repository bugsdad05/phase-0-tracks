*DBC Challenge 9.1, Rel 1*

**What are some of the key design philosophies of the Linux operating system?**

_The creators of the Unix operating system started with a radical concept: they assumed that the user of their operating system would be computer literate from the start. The entire Unix philosophy revolves around the idea that the user knows what he or she is doing._

**In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

_A virtual private server (VPS) is a virtual machine sold as a service by an Internet hosting service.
A VPS runs its own copy of an operating system, and customers may have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS. For many purposes they are functionally equivalent to a dedicated physical server, and being software-defined, are able to be much more easily created and configured. They are priced much lower than an equivalent physical server, but as they share the underlying physical hardware with other VPSs, performance may be lower, and may depend on the workload of other instances on the same hardware node._

**Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**

_because root by definitiion is a super user and has access to everything on the system including all files on the root or highest level directory. As this level of access is rarely necessary once the machine is configured, working as 'root' assumes unneccessary risk_