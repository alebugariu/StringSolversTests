(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.len tmp_str0) (str.len tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:41.029780  2946 UnaryAutomaton.cpp:325] 1
;I0818 17:36:41.029815  2946 UnaryAutomaton.cpp:326] 1
;I0818 17:36:41.029824  2946 UnaryAutomaton.cpp:327] 1
;F0818 17:36:41.038133  2946 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fd2f9999f5d  google::LogMessage::Fail()
;    @     0x7fd2f999c513  google::LogMessage::SendToLog()
;    @     0x7fd2f9999aeb  google::LogMessage::Flush()
;    @     0x7fd2f999b45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fd2f9fbda26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fd2fa00b992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fd2f9f0a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd2f9fbc762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fd2fa008df0  Vlab::SMT::ToString::accept()
;    @     0x7fd2f9f0a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd2f9fb77f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fd2fa004450  Vlab::SMT::Eq::accept()
;    @     0x7fd2f9f0a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd2f9fb5878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fd2f9ff65ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fd2f9fed96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd2fa002b5c  Vlab::SMT::And::accept()
;    @     0x7fd2f9f0a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd2f9ff6a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd2f9fecd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd2fa000d2a  Vlab::SMT::Assert::accept()
;    @     0x7fd2f9f0a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd2fa00f699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd2fa000067  Vlab::SMT::Script::visit_children()
;    @     0x7fd2f9f0a9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd2f9fecb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fd2fa00003c  Vlab::SMT::Script::accept()
;    @     0x7fd2f9f0a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd2f9fec7bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fd2f9ef0b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fd2f904c830  __libc_start_main
