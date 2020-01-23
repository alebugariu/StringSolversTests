(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1) (str.at tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:15.938014  3243 UnaryAutomaton.cpp:325] 1
;I0818 17:37:15.938158  3243 UnaryAutomaton.cpp:326] 1
;I0818 17:37:15.938179  3243 UnaryAutomaton.cpp:327] 1
;I0818 17:37:15.964084  3243 UnaryAutomaton.cpp:325] 1
;I0818 17:37:15.964143  3243 UnaryAutomaton.cpp:326] 1
;I0818 17:37:15.964159  3243 UnaryAutomaton.cpp:327] 1
;F0818 17:37:15.985534  3243 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fb66cb53f5d  google::LogMessage::Fail()
;    @     0x7fb66cb56513  google::LogMessage::SendToLog()
;    @     0x7fb66cb53aeb  google::LogMessage::Flush()
;    @     0x7fb66cb5545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fb66d177a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fb66d1c5992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fb66d0c49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb66d176762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fb66d1c2df0  Vlab::SMT::ToString::accept()
;    @     0x7fb66d0c49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb66d1717f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fb66d1be450  Vlab::SMT::Eq::accept()
;    @     0x7fb66d0c49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb66d16f878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fb66d1b05ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fb66d1a796e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb66d1bcb5c  Vlab::SMT::And::accept()
;    @     0x7fb66d0c49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb66d1b0a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb66d1a6d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb66d1bad2a  Vlab::SMT::Assert::accept()
;    @     0x7fb66d0c49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb66d1c9699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb66d1ba067  Vlab::SMT::Script::visit_children()
;    @     0x7fb66d0c49e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb66d1a6b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fb66d1ba03c  Vlab::SMT::Script::accept()
;    @     0x7fb66d0c49ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb66d1a67bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fb66d0aab84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fb66c206830  __libc_start_main
